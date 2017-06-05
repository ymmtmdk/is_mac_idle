require "is_mac_idle/version"
require "open3"

module IsMacIdle
  module_function
  def idle_time
    `ioreg -c IOHIDSystem`.scan(/HIDIdleTime" = (\d+)/)[0][0].to_f / 1000_000_000
  end

  def brightness
    `ioreg -c AppleBacklightDisplay`.scan(/"brightness"[^}]+=(\d+)}/)[0][0].to_f
  end

  def net_traffic(sec = 1)
    Open3.popen3("netstat -i -w #{sec}") do |i, o, e, th|
      o.gets
      o.gets
      a = o.gets.split.map(&:to_i)
      th.kill
      {in: a[2], out: a[5]}
    end
  end
end

if __FILE__ == $0
  p IsMacIdle::brightness
  p IsMacIdle::idle_time
  p IsMacIdle::net_traffic
end
