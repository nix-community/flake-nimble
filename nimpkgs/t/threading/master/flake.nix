{
  description = ''New atomics, thread primitives, channels and atomic refcounting for --gc:arc/orc.'';
  inputs.src-threading-master.flake = false;
  inputs.src-threading-master.type = "github";
  inputs.src-threading-master.owner = "nim-lang";
  inputs.src-threading-master.repo = "threading";
  inputs.src-threading-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-threading-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-threading-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-threading-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}