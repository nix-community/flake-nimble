{
  description = ''Manage your clipboard remotely'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-servclip-master.flake = false;
  inputs.src-servclip-master.type = "gitlab";
  inputs.src-servclip-master.owner = "lurlo";
  inputs.src-servclip-master.repo = "servclip";
  inputs.src-servclip-master.ref = "refs/heads/master";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
  inputs."nimclipboard".type = "github";
  inputs."nimclipboard".owner = "riinr";
  inputs."nimclipboard".repo = "flake-nimble";
  inputs."nimclipboard".ref = "flake-pinning";
  inputs."nimclipboard".dir = "nimpkgs/n/nimclipboard";

  
  inputs."bluesoftcosmos".type = "github";
  inputs."bluesoftcosmos".owner = "riinr";
  inputs."bluesoftcosmos".repo = "flake-nimble";
  inputs."bluesoftcosmos".ref = "flake-pinning";
  inputs."bluesoftcosmos".dir = "nimpkgs/b/bluesoftcosmos";

  outputs = { self, nixpkgs, flakeNimbleLib, src-servclip-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-servclip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-servclip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}