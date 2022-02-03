{
  description = ''A DSL for quickly writing parsers'';
  inputs.src-glossolalia-master.flake = false;
  inputs.src-glossolalia-master.type = "github";
  inputs.src-glossolalia-master.owner = "fowlmouth";
  inputs.src-glossolalia-master.repo = "glossolalia";
  inputs.src-glossolalia-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-glossolalia-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glossolalia-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glossolalia-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}