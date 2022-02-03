{
  description = ''Commandant is a simple to use library for parsing command line arguments. Commandant is ideal for writing terminal applications, with  support for flags, options, subcommands, and custom exit options.'';
  inputs.src-commandant-0_10_2.flake = false;
  inputs.src-commandant-0_10_2.type = "github";
  inputs.src-commandant-0_10_2.owner = "casey-SK";
  inputs.src-commandant-0_10_2.repo = "commandant";
  inputs.src-commandant-0_10_2.ref = "refs/tags/0.10.2";
  
  outputs = { self, nixpkgs, src-commandant-0_10_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandant-0_10_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-commandant-0_10_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}