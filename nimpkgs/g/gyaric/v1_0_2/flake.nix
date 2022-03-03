{
  description = ''gyaric is a module to encode/decode text to unreadable gyaru's text.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gyaric-v1_0_2.flake = false;
  inputs.src-gyaric-v1_0_2.type = "github";
  inputs.src-gyaric-v1_0_2.owner = "jiro4989";
  inputs.src-gyaric-v1_0_2.repo = "gyaric";
  inputs.src-gyaric-v1_0_2.ref = "refs/tags/v1.0.2";
  inputs.src-gyaric-v1_0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gyaric-v1_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gyaric-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gyaric-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}