{
  description = ''Simple database generator, connector and query tools.'';
  inputs.src-zfdbms-main.flake = false;
  inputs.src-zfdbms-main.type = "github";
  inputs.src-zfdbms-main.owner = "zendbit";
  inputs.src-zfdbms-main.repo = "nim.zfdbms";
  inputs.src-zfdbms-main.ref = "refs/heads/main";
  
  
  inputs."stdext".type = "github";
  inputs."stdext".owner = "riinr";
  inputs."stdext".repo = "flake-nimble";
  inputs."stdext".ref = "flake-pinning";
  inputs."stdext".dir = "nimpkgs/s/stdext";

  outputs = { self, nixpkgs, src-zfdbms-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfdbms-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zfdbms-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}