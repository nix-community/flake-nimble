{
  description = ''A lightweight, self-contained, RESTful, searchable, multi-format NoSQL document store'';
  inputs.src-litestore-v1_3_1.flake = false;
  inputs.src-litestore-v1_3_1.type = "github";
  inputs.src-litestore-v1_3_1.owner = "h3rald";
  inputs.src-litestore-v1_3_1.repo = "litestore";
  inputs.src-litestore-v1_3_1.ref = "refs/tags/v1.3.1";
  
  outputs = { self, nixpkgs, src-litestore-v1_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-litestore-v1_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-litestore-v1_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}