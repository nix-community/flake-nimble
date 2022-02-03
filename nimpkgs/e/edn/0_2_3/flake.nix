{
  description = ''EDN and Clojure parser'';
  inputs.src-edn-0_2_3.flake = false;
  inputs.src-edn-0_2_3.type = "github";
  inputs.src-edn-0_2_3.owner = "rosado";
  inputs.src-edn-0_2_3.repo = "edn.nim";
  inputs.src-edn-0_2_3.ref = "refs/tags/0.2.3";
  
  outputs = { self, nixpkgs, src-edn-0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-edn-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-edn-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}