#'  Example data for a 4-state partitioned survival model
#'
#' A collection of example datasets containing simulated survival, costs, and utility data for a 4-state
#' partitioned survival model.
#'
#' 
#' @format 
#' A list containing the following elements:
#' \itemize{
#' \item{Survival}{ A data frame containining patient information and time to 3 separate survival endpoints.}
#' \item{Costs}{A list of data frames. The first data frame contains medical cost data and the
#' second data frame contains drug cost data.}
#' }
#' 
#' @section Survival data:
#' The survival data frame contains a list of 3 survival curves, each containing the following columns.
#' \describe{
#' \item{female}{An indicator variable equal to 1 if the patient is female and 0 otherwise.}
#' \item{age}{The age of the patient in years.}
#' \item{strategy_id}{The id of the treatment strategy used.}
#' \item{endpoint1_time}{Follow up time with right censored data to survival endpoint 1.}
#' \item{endpoint1_status}{A status indicator for survival endpoint 1 equal to 0 if alive and 1 if dead.}
#' \item{endpoint2_time}{Follow up time with right censored data to survival endpoint 2.}
#' \item{endpoint2_status}{A status indicator for survival endpoint 2 equal to 0 if alive and 1 if dead.}
#' \item{endpoint3_time}{Follow up time with right censored data to survival endpoint 3.}
#' \item{endpoint3_status}{A status indicator for survival endpoint 3 equal to 0 if alive and 1 if dead.}
#' }
#' 
#' @section Cost data:
#' The cost list contains two data frames.The first data frame contains data on the
#' medical costs by patient and health state, and contains the following columns:
#' \describe{
#'  \item{patient_id}{An integer denoting the id of the patient.}
#'   \item{female}{An indicator variable equal to 1 if the patient is female and 0 otherwise.}
#'   \item{state_name}{A categorical variable denoting the three possible health states.}
#'   \item{costs}{Annualized medical costs.}
#'  }
#'  
#' The second data frame contains data on the drug costs associated with each treatment strategy.
#' \describe{
#'  \item{strategy_id}{The id of each treatment strategy.}
#'  \item{costs}{Annualized drug costs.}
#'  }
"psm4_exdata"

#' Example data for a 3-state continuous time state transition model
#'
#' A collection of example datasets containing health state transition, 
#' costs, and utility data for a 3-state continuous time state transition model.
#'
#' 
#' @format 
#' A list containing the following elements:
#' \itemize{
#' \item{transitions}{ A data frame containining the times at which patient transitions between health states based
#' on the dataset \link[mstate]{prothr} from the \code{mstate} package.}
#' \item{costs}{ A list of data frames. The first data frame contains summary medical cost estimates and the
#' second data frame contains drug cost data.}
#' \item{utility}{ A data frame of summary utility estimates.}
#' }
#' 
#' @section Transitions data:
#' The data frame has the following columns:
#' \describe{
#' \item{strategy_id}{Treatment strategy identification number.}
#' \item{patient_id}{Patient identification number.}
#' \item{from}{Starting state.}
#' \item{to}{Receiving state.}
#' \item{trans}{Transition number.}
#' \item{Tstart}{Starting time.}
#' \item{Tstop}{Transition time.}
#' \item{years}{Elapsed years between \code{Tstart} and \code{Tstop}.}
#' \item{status}{Status variable; 1=transition, 0=censored.}
#' }
#' 
#' @section Cost data:
#' The cost list contains two data frames. The first data frame contains summary data on
#' medical costs by gender and health state, and contains the following columns:
#' \describe{
#'  \item{gender}{Female or male}
#'   \item{state_id}{The health state identification number.}
#'   \item{mean}{Mean costs.}
#'   \item{se}{Standard error of medical costs.}
#'  }
#'  
#' The second data frame contains data on the drug costs associated with each treatment strategy.
#' \describe{
#'  \item{strategy_id}{The treatment strategy identification number.}
#'  \item{costs}{Annualized drug costs.}
#'  }
#'  
#' @section Utility data:
#' The data frame has the following columns:
#' \describe{
#' \item{state_id}{The health state identification number.}
#' \item{mean}{Mean costs.}
#' \item{se}{Standard error.}
#' }
#' 
"ctstm3_exdata"

