module Rails
  class <<self
    def root
      File.expand_path(__FILE__).split('/')[0..-3].join('/')
    end
  end
end

worker_processes 4

working_directory Rails.root

listen "/tmp/library_socket"

timeout 3600

pid "#{Rails.root}/tmp/pids/unicorn.pid"

stderr_path "#{Rails.root}/log/unicorn.log"
stdout_path "#{Rails.root}/log/unicorn.log"
