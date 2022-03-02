{
  description = ''A library for working with the CFG configuration format'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-config-main.flake = false;
  inputs.src-config-main.type = "github";
  inputs.src-config-main.owner = "vsajip";
  inputs.src-config-main.repo = "nim-cfg-lib";
  inputs.src-config-main.ref = "refs/heads/main";
  inputs.src-config-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nre".type = "github";
  # inputs."nre".owner = "riinr";
  # inputs."nre".repo = "flake-nimble";
  # inputs."nre".ref = "flake-pinning";
  # inputs."nre".dir = "nimpkgs/n/nre";
  # inputs."nre".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nre".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."timezones".type = "github";
  # inputs."timezones".owner = "riinr";
  # inputs."timezones".repo = "flake-nimble";
  # inputs."timezones".ref = "flake-pinning";
  # inputs."timezones".dir = "nimpkgs/t/timezones";
  # inputs."timezones".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."timezones".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-config-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-config-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-config-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}