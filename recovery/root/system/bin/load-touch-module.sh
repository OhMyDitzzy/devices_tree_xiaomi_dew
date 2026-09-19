#!/sbin/sh
set +e
mod_dir="/vendor/lib/modules"
modules=(
mt6358-accdet.ko
xiaomi_touch.ko
lct_tp.ko
nt36528_spi.ko 
ft8057m_spi.ko  
icnl9916_spi.ko
)

# load modules
for module in "${modules[@]}"; do
  insmod $mod_dir/$module
done

exit 0
