{
  description = ''ADB protocol implementation in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-adb-master.flake = false;
  inputs.src-adb-master.type = "github";
  inputs.src-adb-master.owner = "Yardanico";
  inputs.src-adb-master.repo = "nim-adb";
  inputs.src-adb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-adb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-adb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-adb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}