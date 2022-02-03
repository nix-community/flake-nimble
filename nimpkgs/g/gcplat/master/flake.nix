{
  description = ''Google Cloud Platform (GCP) APIs'';
  inputs.src-gcplat-master.flake = false;
  inputs.src-gcplat-master.type = "github";
  inputs.src-gcplat-master.owner = "disruptek";
  inputs.src-gcplat-master.repo = "gcplat";
  inputs.src-gcplat-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/yglukhov/nim-jwt.git".url = "path:../../../h/https://github.com/yglukhov/nim-jwt.git";
  inputs."https://github.com/yglukhov/nim-jwt.git".type = "github";
  inputs."https://github.com/yglukhov/nim-jwt.git".owner = "riinr";
  inputs."https://github.com/yglukhov/nim-jwt.git".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/nim-jwt.git".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/nim-jwt.git".dir = "nimpkgs/h/https://github.com/yglukhov/nim-jwt.git";

  
  inputs."https://github.com/disruptek/rest.git".url = "path:../../../h/https://github.com/disruptek/rest.git";
  inputs."https://github.com/disruptek/rest.git".type = "github";
  inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";

  
  inputs."https://github.com/disruptek/openapi.git".url = "path:../../../h/https://github.com/disruptek/openapi.git";
  inputs."https://github.com/disruptek/openapi.git".type = "github";
  inputs."https://github.com/disruptek/openapi.git".owner = "riinr";
  inputs."https://github.com/disruptek/openapi.git".repo = "flake-nimble";
  inputs."https://github.com/disruptek/openapi.git".ref = "flake-pinning";
  inputs."https://github.com/disruptek/openapi.git".dir = "nimpkgs/h/https://github.com/disruptek/openapi.git";

  
  inputs."npeg".url = "path:../../../n/npeg";
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  outputs = { self, nixpkgs, src-gcplat-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gcplat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gcplat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}