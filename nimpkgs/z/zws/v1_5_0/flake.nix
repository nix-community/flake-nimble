{
  description = ''A command line interface for shortening URLs with ZWS instances'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-zws-v1_5_0.flake = false;
  inputs.src-zws-v1_5_0.type = "github";
  inputs.src-zws-v1_5_0.owner = "zws-im";
  inputs.src-zws-v1_5_0.repo = "cli";
  inputs.src-zws-v1_5_0.ref = "refs/tags/v1.5.0";
  inputs.src-zws-v1_5_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zws-v1_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zws-v1_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zws-v1_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}