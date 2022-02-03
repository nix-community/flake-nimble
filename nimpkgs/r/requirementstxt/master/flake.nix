{
  description = ''Python requirements.txt generic parser for Nim'';
  inputs.src-requirementstxt-master.flake = false;
  inputs.src-requirementstxt-master.type = "github";
  inputs.src-requirementstxt-master.owner = "juancarlospaco";
  inputs.src-requirementstxt-master.repo = "nim-requirementstxt";
  inputs.src-requirementstxt-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-requirementstxt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-requirementstxt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-requirementstxt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}