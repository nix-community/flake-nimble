{
  description = ''Commandant is a simple to use library for parsing command line arguments. Commandant is ideal for writing terminal applications, with  support for flags, options, subcommands, and custom exit options.'';
  inputs.src-commandant-master.flake = false;
  inputs.src-commandant-master.type = "github";
  inputs.src-commandant-master.owner = "casey-SK";
  inputs.src-commandant-master.repo = "commandant";
  inputs.src-commandant-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-commandant-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandant-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-commandant-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}