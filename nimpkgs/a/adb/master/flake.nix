{
  description = ''ADB protocol implementation in Nim'';
  inputs.src-adb-master.flake = false;
  inputs.src-adb-master.type = "github";
  inputs.src-adb-master.owner = "Yardanico";
  inputs.src-adb-master.repo = "nim-adb";
  inputs.src-adb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-adb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-adb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-adb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}