{
  description = ''A library for working with the CFG configuration format'';
  inputs.src-config-0_1_0.flake = false;
  inputs.src-config-0_1_0.type = "github";
  inputs.src-config-0_1_0.owner = "vsajip";
  inputs.src-config-0_1_0.repo = "nim-cfg-lib";
  inputs.src-config-0_1_0.ref = "refs/tags/0.1.0";
  
  
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

  outputs = { self, nixpkgs, src-config-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-config-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-config-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}