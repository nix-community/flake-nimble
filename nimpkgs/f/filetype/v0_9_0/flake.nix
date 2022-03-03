{
  description = ''Small and dependency free Nim package to infer file and MIME type checking the magic numbers signature.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-filetype-v0_9_0.flake = false;
  inputs.src-filetype-v0_9_0.type = "github";
  inputs.src-filetype-v0_9_0.owner = "jiro4989";
  inputs.src-filetype-v0_9_0.repo = "filetype";
  inputs.src-filetype-v0_9_0.ref = "refs/tags/v0.9.0";
  inputs.src-filetype-v0_9_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-filetype-v0_9_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-filetype-v0_9_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-filetype-v0_9_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}