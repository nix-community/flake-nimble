{
  description = ''GeoRef Argentina Government MultiSync API Client for Nim'';
  inputs.src-georefar-master.flake = false;
  inputs.src-georefar-master.type = "github";
  inputs.src-georefar-master.owner = "juancarlospaco";
  inputs.src-georefar-master.repo = "nim-georefar";
  inputs.src-georefar-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-georefar-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-georefar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-georefar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}