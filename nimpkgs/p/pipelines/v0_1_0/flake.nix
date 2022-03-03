{
  description = ''A tiny framework & language for crafting massively parallel data pipelines'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pipelines-v0_1_0.flake = false;
  inputs.src-pipelines-v0_1_0.type = "github";
  inputs.src-pipelines-v0_1_0.owner = "calebwin";
  inputs.src-pipelines-v0_1_0.repo = "pipelines";
  inputs.src-pipelines-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-pipelines-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."python".type = "github";
  # inputs."python".owner = "riinr";
  # inputs."python".repo = "flake-nimble";
  # inputs."python".ref = "flake-pinning";
  # inputs."python".dir = "nimpkgs/p/python";
  # inputs."python".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."python".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-pipelines-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pipelines-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pipelines-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}