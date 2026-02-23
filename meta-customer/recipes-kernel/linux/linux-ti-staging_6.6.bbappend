FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

# Overwrite k3-am62p5-sk.dts
SRC_URI:append = " file://k3-am62p5-sk.dts"
do_configure:prepend(){
    # overwrite original k3-am62p5-sk.dts
    cp ${WORKDIR}/k3-am62p5-sk.dts ${S}/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
} 

