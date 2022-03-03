{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-marggers-v0_2_5.flake = false;
  inputs.src-marggers-v0_2_5.type = "github";
  inputs.src-marggers-v0_2_5.owner = "metagn";
  inputs.src-marggers-v0_2_5.repo = "marggers";
  inputs.src-marggers-v0_2_5.ref = "refs/tags/v0.2.5";
  inputs.src-marggers-v0_2_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-marggers-v0_2_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-marggers-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-marggers-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}