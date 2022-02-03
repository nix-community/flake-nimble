{
  description = ''USIG Argentina Government MultiSync API Client for Nim'';
  inputs.src-usigar-master.flake = false;
  inputs.src-usigar-master.type = "github";
  inputs.src-usigar-master.owner = "juancarlospaco";
  inputs.src-usigar-master.repo = "nim-usigar";
  inputs.src-usigar-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-usigar-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-usigar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-usigar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}