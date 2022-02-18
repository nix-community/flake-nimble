{
  description = ''Binary parser (and writer) in pure Nim. Generates efficient parsing procedures that handle many commonly seen patterns seen in binary files and does sub-byte field reading.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-binaryparse-master.flake = false;
  inputs.src-binaryparse-master.type = "github";
  inputs.src-binaryparse-master.owner = "PMunch";
  inputs.src-binaryparse-master.repo = "binaryparse";
  inputs.src-binaryparse-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-binaryparse-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binaryparse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-binaryparse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}