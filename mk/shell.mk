FOR_DEVEL_MODE ?= "NO"

do-provision:
	@sudo mkdir ${CBSD_WORKDIR}/jails/${SERVICE}/root/shell >/dev/null 2>&1 || true
.if ${FOR_DEVEL_MODE} == "YES"
	@sudo ${REGGAE_PATH}/scripts/shell-provision.sh ${SERVICE} devel
.else
	@sudo ${REGGAE_PATH}/scripts/shell-provision.sh ${SERVICE}
.endif
