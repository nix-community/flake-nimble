{
  description = ''Syslog module.'';
  inputs."syslog-master".url = "path:./master";
  inputs."syslog-0_0_3".url = "path:./0_0_3";
  inputs."syslog-0_0_5".url = "path:./0_0_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}