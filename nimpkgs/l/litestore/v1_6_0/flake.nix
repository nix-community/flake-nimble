{
  description = ''A lightweight, self-contained, RESTful, searchable, multi-format NoSQL document store'';
  inputs.src-litestore-v1_6_0.flake = false;
  inputs.src-litestore-v1_6_0.type = "github";
  inputs.src-litestore-v1_6_0.owner = "h3rald";
  inputs.src-litestore-v1_6_0.repo = "litestore";
  inputs.src-litestore-v1_6_0.ref = "refs/tags/v1.6.0";
  
  outputs = { self, nixpkgs, src-litestore-v1_6_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-litestore-v1_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-litestore-v1_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}