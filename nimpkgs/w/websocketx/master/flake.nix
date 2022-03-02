{
  description = ''Websocket for httpx.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-websocketx-master.flake = false;
  inputs.src-websocketx-master.type = "github";
  inputs.src-websocketx-master.owner = "xflywind";
  inputs.src-websocketx-master.repo = "websocketx";
  inputs.src-websocketx-master.ref = "refs/heads/master";
  inputs.src-websocketx-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."ws".type = "github";
  # inputs."ws".owner = "riinr";
  # inputs."ws".repo = "flake-nimble";
  # inputs."ws".ref = "flake-pinning";
  # inputs."ws".dir = "nimpkgs/w/ws";
  # inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."httpx".type = "github";
  # inputs."httpx".owner = "riinr";
  # inputs."httpx".repo = "flake-nimble";
  # inputs."httpx".ref = "flake-pinning";
  # inputs."httpx".dir = "nimpkgs/h/httpx";
  # inputs."httpx".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."httpx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-websocketx-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websocketx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-websocketx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}