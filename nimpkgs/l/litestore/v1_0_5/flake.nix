{
  description = ''A lightweight, self-contained, RESTful, searchable, multi-format NoSQL document store'';
  inputs.src-litestore-v1_0_5.flake = false;
  inputs.src-litestore-v1_0_5.type = "github";
  inputs.src-litestore-v1_0_5.owner = "h3rald";
  inputs.src-litestore-v1_0_5.repo = "litestore";
  inputs.src-litestore-v1_0_5.ref = "refs/tags/v1.0.5";
  
  
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-litestore-v1_0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-litestore-v1_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-litestore-v1_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}