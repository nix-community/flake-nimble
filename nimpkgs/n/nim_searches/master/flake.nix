{
  description = ''search algorithms'';
  inputs.src-nim_searches-master.flake = false;
  inputs.src-nim_searches-master.type = "github";
  inputs.src-nim_searches-master.owner = "nnahito";
  inputs.src-nim_searches-master.repo = "nim_searched";
  inputs.src-nim_searches-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nim_searches-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_searches-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim_searches-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}