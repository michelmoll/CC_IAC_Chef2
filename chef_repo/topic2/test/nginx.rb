# encoding: utf-8
# copyright: 2017, Stefan Wüst

title 'nginx source installatio test'

control 'nginx-source' do
    impact 1
    title 'nginx source installation'
    desc 'nginx cli should work'
    describe command('nginx -v') do
        its('stdout') { should include('1.12.1') }
    end
end 