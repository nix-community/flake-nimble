{
  description = ''Nim implementation of user-agent parser'';
  inputs.src-uap-master.flake = false;
  inputs.src-uap-master.type = "gitlab";
  inputs.src-uap-master.owner = "artemklevtsov";
  inputs.src-uap-master.repo = "nim-uap";
  inputs.src-uap-master.ref = "refs/heads/master";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."yaml".type = "github";
  inputs."yaml".owner = "riinr";
  inputs."yaml".repo = "flake-nimble";
  inputs."yaml".ref = "flake-pinning";
  inputs."yaml".dir = "nimpkgs/y/yaml";

  outputs = { self, nixpkgs, src-uap-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}