{
  description = ''A lightweight, self-contained, RESTful, searchable, multi-format NoSQL document store'';
  inputs.src-litestore-master.flake = false;
  inputs.src-litestore-master.type = "github";
  inputs.src-litestore-master.owner = "h3rald";
  inputs.src-litestore-master.repo = "litestore";
  inputs.src-litestore-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-litestore-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-litestore-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-litestore-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}