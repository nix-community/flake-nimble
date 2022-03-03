{
  description = ''A Beautiful Markdown Parser in the Nim World.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-markdown-v0_8_5.flake = false;
  inputs.src-markdown-v0_8_5.type = "github";
  inputs.src-markdown-v0_8_5.owner = "soasme";
  inputs.src-markdown-v0_8_5.repo = "nim-markdown";
  inputs.src-markdown-v0_8_5.ref = "refs/tags/v0.8.5";
  inputs.src-markdown-v0_8_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-markdown-v0_8_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-markdown-v0_8_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-markdown-v0_8_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}