{
  description = ''Nim wrapper for the Chromium Embedded Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimCEF-master.flake = false;
  inputs.src-nimCEF-master.type = "github";
  inputs.src-nimCEF-master.owner = "jangko";
  inputs.src-nimCEF-master.repo = "nimCEF";
  inputs.src-nimCEF-master.ref = "refs/heads/master";
  inputs.src-nimCEF-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimCEF-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimCEF-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimCEF-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}