{
  description = ''Static website generation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-baker-v1_6.flake = false;
  inputs.src-baker-v1_6.type = "github";
  inputs.src-baker-v1_6.owner = "jasonrbriggs";
  inputs.src-baker-v1_6.repo = "baker";
  inputs.src-baker-v1_6.ref = "refs/tags/v1.6";
  inputs.src-baker-v1_6.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-baker-v1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-baker-v1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-baker-v1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}