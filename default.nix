{ sources ? import ./nix/sources.nix {}, pkgs ? import sources.nixpkgs {}, oplog ? sources.oplogtoredis }:
with pkgs;

buildGoModule {
  name = "oplogtoredis";
  src = oplog;
  checkPhase = false;
  vendorSha256 = "19qnprrcmbqv94ak2m85g0mdr0cid00hym2lxpbyb16k7wm4s7ia";
}
