{
  description = ''Fast and just works JSON-Binding for Nim'';
  inputs.src-sam-master.flake = false;
  inputs.src-sam-master.type = "github";
  inputs.src-sam-master.owner = "OpenSystemsLab";
  inputs.src-sam-master.repo = "sam.nim";
  inputs.src-sam-master.ref = "refs/heads/master";
  
  
  inputs."jsmn".type = "github";
  inputs."jsmn".owner = "riinr";
  inputs."jsmn".repo = "flake-nimble";
  inputs."jsmn".ref = "flake-pinning";
  inputs."jsmn".dir = "nimpkgs/j/jsmn";

  outputs = { self, nixpkgs, src-sam-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sam-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sam-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}