{
  description = ''InfluxDB API client library'';
  inputs."nimflux-master".url = "path:./master";
  inputs."nimflux-v0_1_0".url = "path:./v0_1_0";
  inputs."nimflux-v0_1_1".url = "path:./v0_1_1";
  inputs."nimflux-v0_1_2".url = "path:./v0_1_2";
  inputs."nimflux-v0_1_3".url = "path:./v0_1_3";
  inputs."nimflux-v1_0_0".url = "path:./v1_0_0";
  inputs."nimflux-v1_0_1".url = "path:./v1_0_1";
  inputs."nimflux-v1_0_2".url = "path:./v1_0_2";
  inputs."nimflux-v1_0_3".url = "path:./v1_0_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}