{
  description = ''Text editor to speed up testing code snippets'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-snip-v0_2_0.flake = false;
  inputs.src-snip-v0_2_0.type = "github";
  inputs.src-snip-v0_2_0.owner = "genotrance";
  inputs.src-snip-v0_2_0.repo = "snip";
  inputs.src-snip-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-snip-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-snip-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-snip-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-snip-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}