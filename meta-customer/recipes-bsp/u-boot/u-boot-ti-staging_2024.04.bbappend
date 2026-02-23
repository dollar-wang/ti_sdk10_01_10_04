FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

# Overwrite u-boot k3-am62p5-sk.dts
SRC_URI:append = " file://k3-am62p5-sk.dts"
do_configure:prepend(){
    # overwrite original k3-am62p5-sk.dts
    cp ${WORKDIR}/k3-am62p5-sk.dts ${S}/arch/arm/dts/k3-am62p5-sk.dts
} 


# customer U-boot cfg
SRC_URI:append = " file://customer.cfg"

# Overwrite u-boot am62px_evm_a53_defconfig
#SRC_URI:append = " file://am62px_evm_a53_defconfig"
#do_configure:prepend(){
#    # overwrite original am62px_evm_a53_defconfig
#    cp ${WORKDIR}/am62px_evm_a53_defconfig ${S}/configs/am62px_evm_a53_defconfig
#}