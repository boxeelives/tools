#!/bin/sh

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
# AUTHOR BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
# AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNEC-
# TION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

BASEDIR=`dirname $0`

# Stop Boxee from running and screwing things up.
killall BoxeeLauncher; killall Boxee;

# Backup the .boxee data directory from the Boxee to the USB
tar -cvf "$BASEDIR/$(date)-boxee-data-backup.tar" /data/.boxee/

# Copy the profile from the USB to the Boxee
cp -r "$BASEDIR/data/.boxee/UserData/" /data/.boxee/UserData/