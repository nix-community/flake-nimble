{
  description = ''Prebuilt components for the Fidget GUI library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-spinner-master.flake = false;
  inputs.src-spinner-master.type = "github";
  inputs.src-spinner-master.owner = "tonogram";
  inputs.src-spinner-master.repo = "spinner";
  inputs.src-spinner-master.ref = "refs/heads/master";
  
  
  inputs."fidget".type = "github";
  inputs."fidget".owner = "riinr";
  inputs."fidget".repo = "flake-nimble";
  inputs."fidget".ref = "flake-pinning";
  inputs."fidget".dir = "nimpkgs/f/fidget";

  
  inputs."gradient".type = "github";
  inputs."gradient".owner = "riinr";
  inputs."gradient".repo = "flake-nimble";
  inputs."gradient".ref = "flake-pinning";
  inputs."gradient".dir = "nimpkgs/g/gradient";

  outputs = { self, nixpkgs, flakeNimbleLib, src-spinner-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spinner-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spinner-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}