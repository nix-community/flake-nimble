{
  description = ''Commandant is a simple to use library for parsing command line arguments. Commandant is ideal for writing terminal applications, with  support for flags, options, subcommands, and custom exit options.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-commandant-0_10_5.flake = false;
  inputs.src-commandant-0_10_5.type = "github";
  inputs.src-commandant-0_10_5.owner = "casey-SK";
  inputs.src-commandant-0_10_5.repo = "commandant";
  inputs.src-commandant-0_10_5.ref = "refs/tags/0.10.5";
  inputs.src-commandant-0_10_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-commandant-0_10_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandant-0_10_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-commandant-0_10_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}