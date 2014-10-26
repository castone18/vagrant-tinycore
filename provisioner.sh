#!/bin/bash
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
# |
# | provisioner.sh
# |
# |    Vagrant invoked provisioner of tinycore box. Modify this file to 
# | add provisioning such as installing additional packages.
# |
# +----------------------------------------------------------------------------

echo "Provisioning tinycore box..."

cd /home/tc

# Example of provisioning to add a package
#/bin/su tc -c "/usr/bin/tce-load -wi compiletc"

# Tinycore does not support dhcp on additional networks. DHCP networks
# can be implemented by giving the network a dummy ip address in the
# Vagrantfile, and then reconfiguring here.
#cat /var/run/udhcpc.eth1.pid | xargs sudo kill -9
#sudo /sbin/udhcpc -b -i eth1 -x hostname box -p /var/run/udhcpc.eth1.pid

echo "Provisioning done."
