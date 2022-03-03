{
  description = ''Http request form parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-httpform-0_2_0.flake = false;
  inputs.src-httpform-0_2_0.type = "github";
  inputs.src-httpform-0_2_0.owner = "tulayang";
  inputs.src-httpform-0_2_0.repo = "httpform";
  inputs.src-httpform-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-httpform-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-httpform-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpform-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-httpform-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}