{
  description = ''Simpleflake for nim'';
  inputs.src-simpleflake-master.flake = false;
  inputs.src-simpleflake-master.type = "github";
  inputs.src-simpleflake-master.owner = "aisk";
  inputs.src-simpleflake-master.repo = "simpleflake.nim";
  inputs.src-simpleflake-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-simpleflake-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleflake-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simpleflake-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}