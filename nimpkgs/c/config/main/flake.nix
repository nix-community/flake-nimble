{
  description = ''A library for working with the CFG configuration format'';
  inputs.src-config-main.flake = false;
  inputs.src-config-main.type = "github";
  inputs.src-config-main.owner = "vsajip";
  inputs.src-config-main.repo = "nim-cfg-lib";
  inputs.src-config-main.ref = "refs/heads/main";
  
  
  inputs."nre".type = "github";
  inputs."nre".owner = "riinr";
  inputs."nre".repo = "flake-nimble";
  inputs."nre".ref = "flake-pinning";
  inputs."nre".dir = "nimpkgs/n/nre";

  
  inputs."timezones".type = "github";
  inputs."timezones".owner = "riinr";
  inputs."timezones".repo = "flake-nimble";
  inputs."timezones".ref = "flake-pinning";
  inputs."timezones".dir = "nimpkgs/t/timezones";

  outputs = { self, nixpkgs, src-config-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-config-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-config-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}