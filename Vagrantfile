# -*- mode: ruby -*-
# vi: set ft=ruby :
# +----------------------------------------------------------------------------
# | 
# |   Copyright (c) 2014 Christopher Stone
# |   Licensed under GPL v2.0, see LICENSE file.
# | 
# |   THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED
# |   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# |   MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# |   DISCLAIMED. IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
# |   FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# |   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# |   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# |   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# |   LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# |   NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# |   SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# | 
# +----------------------------------------------------------------------------

Vagrant.configure("2") do |config|
  config.vm.box = "tinycore"

  config.vagrant.host = :detect

  config.vm.boot_timeout = 75
  config.vm.graceful_halt_timeout = 35
  config.vm.guest = :tinycore
  # Uncommment the following for a public network interface, see 
  # provisioner.sh to allow ip addressing with dhcp
  #config.vm.network "public_network", ip: "10.1.1.1"

  config.vm.provider :virtualbox do |vb|
     vb.memory = 512
     vb.cpus = 1
  end

  config.vm.provider :libvirt do |libvirt|
     libvirt.memory = 512
     libvirt.cpus = 1
  end

  config.vm.provision "shell", path: "provisioner.sh"

  config.ssh.default.username = "tc"
  config.ssh.shell = "/bin/bash"
  config.ssh.guest_port = 22
  config.ssh.forward_agent = true
  config.ssh.forward_x11 = false
  config.ssh.keep_alive = true
end
