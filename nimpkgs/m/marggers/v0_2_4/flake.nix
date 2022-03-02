{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-marggers-v0_2_4.flake = false;
  inputs.src-marggers-v0_2_4.type = "github";
  inputs.src-marggers-v0_2_4.owner = "metagn";
  inputs.src-marggers-v0_2_4.repo = "marggers";
  inputs.src-marggers-v0_2_4.ref = "refs/tags/v0.2.4";
  inputs.src-marggers-v0_2_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-marggers-v0_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-marggers-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-marggers-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}