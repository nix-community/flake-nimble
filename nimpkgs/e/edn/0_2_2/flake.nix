{
  description = ''EDN and Clojure parser'';
  inputs.src-edn-0_2_2.flake = false;
  inputs.src-edn-0_2_2.type = "github";
  inputs.src-edn-0_2_2.owner = "rosado";
  inputs.src-edn-0_2_2.repo = "edn.nim";
  inputs.src-edn-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, src-edn-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-edn-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-edn-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}