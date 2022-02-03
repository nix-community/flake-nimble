{
  description = ''itch.io API Client for Nim'';
  inputs.src-itchio-master.flake = false;
  inputs.src-itchio-master.type = "github";
  inputs.src-itchio-master.owner = "juancarlospaco";
  inputs.src-itchio-master.repo = "nim-itchio";
  inputs.src-itchio-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-itchio-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-itchio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-itchio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}