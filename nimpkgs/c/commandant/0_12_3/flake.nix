{
  description = ''Commandant is a simple to use library for parsing command line arguments. Commandant is ideal for writing terminal applications, with  support for flags, options, subcommands, and custom exit options.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-commandant-0_12_3.flake = false;
  inputs.src-commandant-0_12_3.type = "github";
  inputs.src-commandant-0_12_3.owner = "casey-SK";
  inputs.src-commandant-0_12_3.repo = "commandant";
  inputs.src-commandant-0_12_3.ref = "refs/tags/0.12.3";
  inputs.src-commandant-0_12_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-commandant-0_12_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandant-0_12_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-commandant-0_12_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}