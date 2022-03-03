{
  description = ''Directory listing tool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-lq-2_2_0.flake = false;
  inputs.src-lq-2_2_0.type = "github";
  inputs.src-lq-2_2_0.owner = "madprops";
  inputs.src-lq-2_2_0.repo = "lq";
  inputs.src-lq-2_2_0.ref = "refs/tags/2.2.0";
  inputs.src-lq-2_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nap".type = "github";
  # inputs."nap".owner = "riinr";
  # inputs."nap".repo = "flake-nimble";
  # inputs."nap".ref = "flake-pinning";
  # inputs."nap".dir = "nimpkgs/n/nap";
  # inputs."nap".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nap".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."parsetoml".type = "github";
  # inputs."parsetoml".owner = "riinr";
  # inputs."parsetoml".repo = "flake-nimble";
  # inputs."parsetoml".ref = "flake-pinning";
  # inputs."parsetoml".dir = "nimpkgs/p/parsetoml";
  # inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-lq-2_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lq-2_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lq-2_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}