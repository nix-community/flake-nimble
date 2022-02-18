{
  description = ''Password generator in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-npg-master.flake = false;
  inputs.src-npg-master.type = "github";
  inputs.src-npg-master.owner = "rustomax";
  inputs.src-npg-master.repo = "npg";
  inputs.src-npg-master.ref = "refs/heads/master";
  
  
  inputs."passgen".type = "github";
  inputs."passgen".owner = "riinr";
  inputs."passgen".repo = "flake-nimble";
  inputs."passgen".ref = "flake-pinning";
  inputs."passgen".dir = "nimpkgs/p/passgen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-npg-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-npg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-npg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}