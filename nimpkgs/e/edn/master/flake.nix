{
  description = ''EDN and Clojure parser'';
  inputs.src-edn-master.flake = false;
  inputs.src-edn-master.type = "github";
  inputs.src-edn-master.owner = "rosado";
  inputs.src-edn-master.repo = "edn.nim";
  inputs.src-edn-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-edn-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-edn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-edn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}