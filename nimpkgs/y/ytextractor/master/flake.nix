{
  description = ''Youtube data extractor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ytextractor-master.flake = false;
  inputs.src-ytextractor-master.type = "github";
  inputs.src-ytextractor-master.owner = "thisago";
  inputs.src-ytextractor-master.repo = "ytextractor";
  inputs.src-ytextractor-master.ref = "refs/heads/master";
  
  
  inputs."ajax".type = "github";
  inputs."ajax".owner = "riinr";
  inputs."ajax".repo = "flake-nimble";
  inputs."ajax".ref = "flake-pinning";
  inputs."ajax".dir = "nimpkgs/a/ajax";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ytextractor-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ytextractor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ytextractor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}